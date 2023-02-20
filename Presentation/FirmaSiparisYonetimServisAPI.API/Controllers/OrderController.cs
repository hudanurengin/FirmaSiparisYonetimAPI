using FirmaSiparisYonetimServisAPI.Application.Abstractions;
using FirmaSiparisYonetimServisAPI.Application.Repositories;
using FirmaSiparisYonetimServisAPI.Application.ViewModels.Order;
using FirmaSiparisYonetimServisAPI.Application.ViewModels.Product;
using FirmaSiparisYonetimServisAPI.domain.Entities;
using FirmaSiparisYonetimServisAPI.Persistence.Repositories;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace FirmaSiparisYonetimServisAPI.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderController : ControllerBase
    {
        readonly private IOrderWriteRepository _orderWriteRepository;
        readonly private IOrderReadRepository _orderReadRepository;

        public OrderController(IOrderWriteRepository orderWriteRepository, IOrderReadRepository orderReadRepository)
        {
            _orderWriteRepository = orderWriteRepository;
            _orderReadRepository = orderReadRepository;
        }

        /*[HttpGet]
        public async Task<IActionResult> Get()
        {

            return Ok(_orderReadRepository.GetAll());
        }*/
        [HttpPost]
        public async Task<IActionResult> Post(VM_Create_Order model)
        {
            await _orderWriteRepository.AddAsync(new()
            {
                OrdersName=model.OrdersName,
                Name=model.Name,
                ProductId=model.ProductId,
                CompanyId=model.CompanyId, 

            });
            await _orderWriteRepository.SaveAsync();
            return StatusCode((int)HttpStatusCode.Created);
        }
    }
}
